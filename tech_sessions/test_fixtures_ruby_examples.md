
### 1. Tests are written in a single test method, with setup and assertions mixed together. There are many assertions in a single method.
```ruby
RSpec.describe Course do
  it 'tests the course class' do

    teacher = User.new
    teacher.name = 'John Doe'
    teacher.role = 'teacher'
    teacher.save

    student = User.new
    student.name = 'Jane Doe'
    student.role = 'student'
    student.save

    course = Course.new
    course.title = 'Ruby Programming'
    course.description = 'Learn Ruby Programming'
    course.price = 0
    expect(course).to be_a(Course)
    expect(course.title).to eq('Ruby Programming')
    expect(course.description).to eq('Learn Ruby Programming')
    expect(course.price).to eq(0)

    expect(course.can_be_saved_by?(teacher)).to eq(true)
    expect(course.can_be_saved_by?(student)).to eq(false)

    expect(course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course).to be_a(Course)
    expect(saved_course.title).to eq('Ruby Programming')
    expect(saved_course.description).to eq('Learn Ruby Programming')
    expect(saved_course.price).to eq(0)

    saved_course.description = 'Learn Ruby Programming with Rails'
    expect(saved_course.save).to eq(true)
    updated_course = Course.find(saved_course.id)
    expect(updated_course).to be_a(Course)
    expect(updated_course.title).to eq('Ruby Programming')
    expect(updated_course.description).to eq('Learn Ruby Programming with Rails')
    expect(updated_course.price).to eq(0)


    saved_course.destroy
    expect(Course.find_by(id: saved_course.id)).to eq(nil)
  end
end
```

### 2. Tests are split into several methods reflecting different groupings of assertions with setup included in the methods.
```ruby
RSpec.describe Course do
  it 'has data' do
    course = Course.new
    course.title = 'Ruby Programming'
    course.description = 'Learn Ruby Programming'
    course.price = 0
    expect(course).to be_a(Course)
    expect(course.title).to eq('Ruby Programming')
    expect(course.description).to eq('Learn Ruby Programming')
    expect(course.price).to eq(0)
  end

  it 'can be checked for save permissions' do
    teacher = User.new
    teacher.name = 'John Doe'
    teacher.role = 'teacher'
    teacher.save

    student = User.new
    student.name = 'Jane Doe'
    student.role = 'student'
    student.save

    course = Course.new
    course.title = 'Ruby Programming'
    course.description = 'Learn Ruby Programming'
    course.price = 0
    expect(course.can_be_saved_by?(teacher)).to eq(true)
    expect(course.can_be_saved_by?(student)).to eq(false)
  end

  it 'can be saved' do
    course = Course.new
    course.title = 'Ruby Programming'
    course.description = 'Learn Ruby Programming'
    course.price = 0

    expect(course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course).to be_a(Course)
    expect(saved_course.title).to eq('Ruby Programming')
    expect(saved_course.description).to eq('Learn Ruby Programming')
    expect(saved_course.price).to eq(0)
  end

  it 'can be updated' do
    course = Course.new
    course.title = 'Ruby Programming'
    course.description = 'Learn Ruby Programming'
    course.price = 0

    expect(course.save).to eq(true)
    saved_course = Course.find(course.id)
    saved_course.description = 'Learn Ruby Programming with Rails'

    expect(saved_course.save).to eq(true)
    updated_course = Course.find(saved_course.id)
    expect(updated_course).to be_a(Course)
    expect(updated_course.title).to eq('Ruby Programming')
    expect(updated_course.description).to eq('Learn Ruby Programming with Rails')
    expect(updated_course.price).to eq(0)
  end

  it 'can be destroyed' do
    course = Course.new
    course.title = 'Ruby Programming'
    course.description = 'Learn Ruby Programming'
    course.price = 0
    course.destroy
    expect(Course.find_by(id: course.id)).to eq(nil)
  end
end

```
### 3. Tests are split into several methods with setup in a `setup` method.
```ruby
RSpec.describe Course do
  before :each do
    @teacher = User.new
    @teacher.name = 'John Doe'
    @teacher.role = 'teacher'
    @teacher.save

    @student = User.new
    @student.name = 'Jane Doe'
    @student.role = 'student'
    @student.save

    @course = Course.new
    @course.title = 'Ruby Programming'
    @course.description = 'Learn Ruby Programming'
    @course.price = 0
  end

  it 'has data' do
    expect(@course).to be_a(Course)
    expect(@course.title).to eq('Ruby Programming')
    expect(@course.description).to eq('Learn Ruby Programming')
    expect(@course.price).to eq(0)
  end

  it 'can be checked for save permissions' do
    expect(@course.can_be_saved_by?(@teacher)).to eq(true)
    expect(@course.can_be_saved_by?(@student)).to eq(false)
  end

  it 'can be saved' do
    expect(@course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course).to be_a(Course)
    expect(saved_course.title).to eq('Ruby Programming')
    expect(saved_course.description).to eq('Learn Ruby Programming')
    expect(saved_course.price).to eq(0)
  end

  it 'can be updated' do
    expect(@course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course.save).to eq(true)
    updated_course = Course.find(saved_course.id)
    expect(updated_course).to be_a(Course)
    expect(updated_course.title).to eq('Ruby Programming')
    expect(updated_course.description).to eq('Learn Ruby Programming with Rails')
    expect(updated_course.price).to eq(0)
  end

  it 'can be destroyed' do
    @course.destroy
    expect(Course.find_by(id: course.id)).to eq(nil)
  end
end
```
### 4. Tests are split into many methods, named for the specific things they are asserting (usually only one or two assertions per method).
```ruby
RSpec.describe Course do
  before :each do
    @teacher = User.new
    @teacher.name = 'John Doe'
    @teacher.role = 'teacher'
    @teacher.save

    @student = User.new
    @student.name = 'Jane Doe'
    @student.role = 'student'
    @student.save

    @course = Course.new
    @course.title = 'Ruby Programming'
    @course.description = 'Learn Ruby Programming'
    @course.price = 0
  end

  it 'has a title' do
    expect(@course.title).to eq('Ruby Programming')
  end
  it 'has a description' do
    expect(@course.description).to eq('Learn Ruby Programming')
  end
  it 'has a price' do
    expect(@course.price).to eq(0)
  end

  it 'has a save permission for a teacher' do
    expect(@course.can_be_saved_by?(@teacher)).to eq(true)
  end

  if 'has no save permission for a student' do
    expect(@course.can_be_saved_by?(@student)).to eq(false)
  end

  it 'saves a title' do
    expect(@course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course.title).to eq('Ruby Programming')
  end

  it 'saves a description' do
    expect(@course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course.description).to eq('Learn Ruby Programming')
  end

  it 'saves a price' do
    expect(@course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course.price).to eq(0)
  end

  it 'can be updated' do
    expect(@course.save).to eq(true)
    saved_course = Course.find(course.id)
    saved_course.description = 'Learn Ruby Programming with Rails'
    expect(saved_course.save).to eq(true)

    updated_course = Course.find(saved_course.id)
    expect(updated_course).to be_a(Course)
    expect(updated_course.title).to eq('Ruby Programming')
    expect(updated_course.description).to eq('Learn Ruby Programming with Rails')
    expect(updated_course.price).to eq(0)
  end

  it 'can be destroyed' do
    @course.destroy
    expect(Course.find_by(id: course.id)).to eq(nil)
  end
end

```
### 5. Context variables are lazy loaded and extracted from the setup.
```ruby
RSpec.describe Course do
  let :teacher do
    teacher = User.new
    teacher.name = 'John Doe'
    teacher.role = 'teacher'
    teacher.save
    teacher
  end

  let :student do
    student = User.new
    student.name = 'Jane Doe'
    student.role = 'student'
    student.save
    student
  end

  let :unsaved_course do
    course = Course.new
    course.title = 'Ruby Programming'
    course.description = 'Learn Ruby Programming'
    course.price = 0
    course
  end

  let :course do
    unsaved_course.save
    unsaved_course
  end

  it 'has a title' do
    expect(unsaved_course.title).to eq('Ruby Programming')
  end

  it 'has a description' do
    expect(unsaved_course.description).to eq('Learn Ruby Programming')
  end

  it 'has a price' do
    expect(unsaved_course.price).to eq(0)
  end

  it 'has a save permission for a teacher' do
    expect(unsaved_course.can_be_saved_by?(teacher)).to eq(true)
  end

  it 'has no save permission for a student' do
    expect(unsaved_course.can_be_saved_by?(student)).to eq(false)
  end

  it 'saves a title' do
    expect(unsaved_course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course.title).to eq('Ruby Programming')
  end

  it 'saves a description' do
    expect(unsaved_course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course.description).to eq('Learn Ruby Programming')
  end

  it 'saves a price' do
    expect(unsaved_course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course.price).to eq(0)
  end

  it 'can be updated' do
    course.description = 'Learn Ruby Programming with Rails'
    expect(course.save).to eq(true)

    updated_course = Course.find(saved_course.id)
    expect(updated_course).to be_a(Course)
    expect(updated_course.title).to eq('Ruby Programming')
    expect(updated_course.description).to eq('Learn Ruby Programming with Rails')
    expect(updated_course.price).to eq(0)
  end

  it 'can be destroyed' do
    course.destroy
    expect(Course.find_by(id: course.id)).to eq(nil)
  end
end

```
### 6. Context are nested, to allow minimized duplication, and to allow context variables to be overridden.

```ruby
RSpec.describe Course do
  let :course do
    course = Course.new
    course.title = 'Ruby Programming'
    course.description = 'Learn Ruby Programming'
    course.price = 0
    course
  end

  it 'has a title' do
    expect(course.title).to eq('Ruby Programming')
  end

  it 'has a description' do
    expect(course.description).to eq('Learn Ruby Programming')
  end

  it 'has a price' do
    expect(course.price).to eq(0)
  end

  it 'has a save permission for a teacher' do
    expect(course.can_be_saved_by?(teacher)).to eq(true)
  end

  it 'has no save permission for a student' do
    expect(course.can_be_saved_by?(student)).to eq(false)
  end

  it 'saves a title' do
    expect(course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course.title).to eq('Ruby Programming')
  end

  it 'saves a description' do
    expect(course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course.description).to eq('Learn Ruby Programming')
  end

  it 'saves a price' do
    expect(course.save).to eq(true)
    saved_course = Course.find(course.id)
    expect(saved_course.price).to eq(0)
  end

  context 'when checking permissions for a student' do
    let :student do
      student = User.new
      student.name = 'Jane Doe'
      student.role = 'student'
      student.save
      student
    end

    it 'has no save permission' do
      expect(course.can_be_saved_by?(student)).to eq(false)
    end
  end

  context 'when checking permissions for a teacher' do
    let :teacher do
      teacher = User.new
      teacher.name = 'John Doe'
      teacher.role = 'teacher'
      teacher.save
      teacher
    end

    it 'has a save permission' do
      expect(course.can_be_saved_by?(teacher)).to eq(true)
    end
  end

  context 'when the course is saved' do
    let :course do
      course = super()
      course.save
      course
    end
    it 'can be updated' do
      course.description = 'Learn Ruby Programming with Rails'
      expect(course.save).to eq(true)

      updated_course = Course.find(saved_course.id)
      expect(updated_course).to be_a(Course)
      expect(updated_course.title).to eq('Ruby Programming')
      expect(updated_course.description).to eq('Learn Ruby Programming with Rails')
      expect(updated_course.price).to eq(0)
    end

    it 'can be destroyed' do
      course.destroy
      expect(Course.find_by(id: course.id)).to eq(nil)
    end
  end
end

```
