## Rules for AI

## Project Tech Stack
- Web framework: Ruby on Rails
  - RSpec + FactoryBot for testing
  - Hotwire Turbo/Stimulus for speed and responsiveness
  - Backpack UI and TailwindCSS for styles
  - Font Awesome for icons
- Database: PostgreSQL
- Jobs: Sidekiq + Redis
- External
  - Payments: Stripe
  - Search: Algolia
  - SSO: StrongMind Identity

## Project conventions

### Convention 1: Follow Rails Conventions
- Follow Rails conventions (the current version in the `Gemfile`)
- Use rails generators to make changes to the databases (and then edit the files after)
- Use Ruby 3.x syntax
- Prefer string interpolation over concatenation
- Use double quotes only when interpolation is needed

### Convention 2: Service Objects and Concerns
- Follow the "skinny controller, fat models" convention.
- When controllers are large, look for opportunities to move logic into models
- Organize chunks of business logic in models into Rails concerns and Service Objects (using the command pattern).
- Use concerns for shared functionality and service objects for encapsulating related business logic.

### Convention 3: Prefer server-side solutions over client-side solutions
- When possible, leverage Turbo over complex, JS-driven client-side solutions.
- When writing a client-side solution, use Stimulus controllers.

### Convention 4: Performance Guidelines
- Use query optimization
- Implement caching where appropriate
- Use background jobs for heavy tasks
- Add database indexes
- Monitor N+1 queries
- Use bulk operations when possible

## Code Style Guidelines

### 1. Database Conventions
  - Include foreign key constraints
  - Add appropriate indexes
  - Use references for associations

### 2. Example Model Structure
  class User < ApplicationRecord
    # Constants first
    ROLES = %w[admin moderator user].freeze
    
    # Associations
    belongs_to :organization
    has_many :posts, dependent: :destroy
    
    # Validations
    validates :name, presence: true
    validates :email, uniqueness: true
    
    # Scopes
    scope :active, -> { where(status: 'active') }
    
    # Class methods
    def self.find_by_credentials(credentials)
      find_by(email: credentials[:email])
    end
    
    # Instance methods
    def full_name
      "#{first_name} #{last_name}"
    end
  end

### 3. Testing Conventions
  - Use RSpec for testing
  - Use factories with FactoryBot
  - Write descriptive test cases
  - Test happy and sad paths
  - Ignore spec type while describing Rspec
  - Ignore `require 'rails_helper'
  - Don't mock attributes or methods of the testing subject

### 3. Example Test Pattern
  RSpec.describe User do
    describe 'validations' do
      it { should validate_presence_of(:name) }
      it { should validate_uniqueness_of(:email) }
    end
    
    describe '#full_name' do
      it 'returns the combined first and last name' do
        user = create(:user, first_name: 'John', last_name: 'Doe')
        expect(user.full_name).to eq('John Doe')
      end
    end
  end
