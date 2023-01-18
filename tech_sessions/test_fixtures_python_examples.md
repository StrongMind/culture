
### 1. Tests are written in a single test method, with setup and assertions mixed together. There are many assertions in a single method.
```python
def test_course_class():
    teacher = UserFactory(first_name='John', last_name='Doe', role='teacher')

    student = UserFactory(first_name='Jane', last_name='Doe', role='student')

    course = CourseFactory(title='Python Programming', description='Learn Python Programming', price=0)

    assert isinstance(course, Course)
    assert course.title == "Python Programming"
    assert course.description == "Learn Python Programming"
    assert course.price == 0

    assert course.can_be_saved_by(teacher)
    assert not course.can_be_saved_by(student)

    course.save()

    saved_course = Course.objects.get(id=course.id)
    assert saved_course.title == "Python Programming"
    assert saved_course.description == "Learn Python Programming"
    assert saved_course.price == 0

    saved_course.title = "Python Programming with Django"
    saved_course.save()

    updated_course = Course.objects.get(id=course.id)
    assert updated_course.title == "Python Programming with Django"

    saved_course.delete()
    assert not Course.objects.filter(id=course.id).exists()

```

### 2. Tests are split into several methods reflecting different groupings of assertions with setup included in the methods.
```python
def test_has_data():
    course = CourseFactory(title='Python Programming', description='Learn Python Programming', price=0)

    assert isinstance(course, Course)
    assert course.title == "Python Programming"
    assert course.description == "Learn Python Programming"
    assert course.price == 0

def test_has_permissions():
    teacher = UserFactory(first_name='John', last_name='Doe', role='teacher')

    student = UserFactory(first_name='Jane', last_name='Doe', role='student')

    assert teacher.has_perm('courses.change_course')
    assert not student.has_perm('courses.change_course')

def test_can_be_saved():
    course = CourseFactory(title='Python Programming', description='Learn Python Programming', price=0)

    course.save()

    saved_course = Course.objects.get(id=course.id)
    assert saved_course.title == "Python Programming"
    assert saved_course.description == "Learn Python Programming"
    assert saved_course.price == 0

def test_can_be_updated():
    course = CourseFactory(title='Python Programming', description='Learn Python Programming', price=0)

    course.save()

    saved_course = Course.objects.get(id=course.id)
    saved_course.title = "Python Programming with Django"
    saved_course.save()

    updated_course = Course.objects.get(id=course.id)
    assert updated_course.title == "Python Programming with Django"

def test_can_be_deleted():
    course = CourseFactory(title='Python Programming', description='Learn Python Programming', price=0)

    course.save()

    saved_course = Course.objects.get(id=course.id)
    saved_course.delete()
    assert not Course.objects.filter(id=course.id).exists()

```

### 3. Tests are split into several methods with setup in a `setup` method.
```python

class CourseTests(unittest.TestCase):
    def setUp(self):
        self.course = CourseFactory(title='Python Programming', description='Learn Python Programming', price=0)
        self.teacher = UserFactory(first_name='John', last_name='Doe', role='teacher')
        self.student = UserFactory(first_name='Jane', last_name='Doe', role='student')

    def test_has_data(self):
        assert isinstance(self.course, Course)
        assert self.course.title == "Python Programming"
        assert self.course.description == "Learn Python Programming"
        assert self.course.price == 0

    def test_has_permissions(self):
        assert self.teacher.has_perm('courses.change_course')
        assert not self.student.has_perm('courses.change_course')

    def test_can_be_saved(self):
        self.course.save()

        saved_course = Course.objects.get(id=self.course.id)
        assert saved_course.title == "Python Programming"
        assert saved_course.description == "Learn Python Programming"
        assert saved_course.price == 0

    def test_can_be_updated(self):
        self.course.save()

        saved_course = Course.objects.get(id=self.course.id)
        saved_course.title = "Python Programming with Django"
        saved_course.save()

        updated_course = Course.objects.get(id=self.course.id)
        assert updated_course.title == "Python Programming with Django"

    def test_can_be_deleted(self):
        self.course.save()

        saved_course = Course.objects.get(id=self.course.id)
        saved_course.delete()
        assert not Course.objects.filter(id=self.course.id).exists()

```

### 4. Tests are split into many methods, named for the specific things they are asserting (usually only one or two assertions per method).
```python

class CourseTests(unittest.TestCase):
    def setUp(self):
        self.course = CourseFactory(title='Python Programming', description='Learn Python Programming', price=0)
        self.teacher = UserFactory(first_name='John', last_name='Doe', role='teacher')
        self.student = UserFactory(first_name='Jane', last_name='Doe', role='student')

    def test_is_a_course(self):
        assert isinstance(self.course, Course)
    
    def test_has_a_title(self):
        assert self.course.title == "Python Programming"
        
    def test_has_a_description(self):
        assert self.course.description == "Learn Python Programming"
    
    def test_has_a_price(self):
        assert self.course.price == 0

    def test_teacher_has_permission(self):
        assert self.teacher.has_perm('courses.change_course')
        
    def test_student_does_not_have_permission(self):
        assert not self.student.has_perm('courses.change_course')

    def test_saves_title(self):
        self.course.save()
        saved_course = Course.objects.get(id=self.course.id)
        assert saved_course.title == "Python Programming"
    
    def test_saves_description(self):
        self.course.save()
        saved_course = Course.objects.get(id=self.course.id)
        assert saved_course.description == "Learn Python Programming"
        
    def test_saves_price(self):
        self.course.save()
        saved_course = Course.objects.get(id=self.course.id)
        assert saved_course.price == 0

    def test_updates_title(self):
        self.course.save()

        saved_course = Course.objects.get(id=self.course.id)
        saved_course.title = "Python Programming with Django"
        saved_course.save()

        updated_course = Course.objects.get(id=self.course.id)
        assert updated_course.title == "Python Programming with Django"

    def test_can_be_deleted(self):
        self.course.save()

        saved_course = Course.objects.get(id=self.course.id)
        saved_course.delete()
        assert not Course.objects.filter(id=self.course.id).exists()

```

### 5. Context variables are lazy loaded and extracted from the setup.
```python
import pytest


class CourseTests(unittest.TestCase):
    @pytest.fixture
    def course(self):
        return CourseFactory(title='Python Programming', description='Learn Python Programming', price=0)
    
    @pytest.fixture
    def teacher(self):
        return UserFactory(first_name='John', last_name='Doe', role='teacher')
    
    @pytest.fixture
    def student(self):
        return UserFactory(first_name='Jane', last_name='Doe', role='student')

    def test_is_a_course(self, course):
        assert isinstance(course, Course)

    def test_has_a_title(self, course):
        assert course.title == "Python Programming"

    def test_has_a_description(self, course):
        assert course.description == "Learn Python Programming"

    def test_has_a_price(self, course):
        assert course.price == 0

    def test_teacher_has_permission(self, teacher):
        assert teacher.has_perm('courses.change_course')

    def test_student_does_not_have_permission(self, student):
        assert not student.has_perm('courses.change_course')

    def test_saves_title(self, course):
        course.save()
        saved_course = Course.objects.get(id=course.id)
        assert saved_course.title == "Python Programming"

    def test_saves_description(self, course):
        course.save()
        saved_course = Course.objects.get(id=course.id)
        assert saved_course.description == "Learn Python Programming"

    def test_saves_price(self, course):
        course.save()
        saved_course = Course.objects.get(id=course.id)
        assert saved_course.price == 0

    def test_updates_title(self, course):
        course.save()

        saved_course = Course.objects.get(id=course.id)
        saved_course.title = "Python Programming with Django"
        saved_course.save()

        updated_course = Course.objects.get(id=course.id)
        assert updated_course.title == "Python Programming with Django"

    def test_can_be_deleted(self, course):
        course.save()

        saved_course = Course.objects.get(id=course.id)
        saved_course.delete()
        assert not Course.objects.filter(id=course.id).exists()

```

### 6. Context are nested, to allow minimized duplication, and to allow context variables to be overridden.
```python
import pytest


def describe_a_course():
    @pytest.fixture
    def course():
        return CourseFactory(title='Python Programming', description='Learn Python Programming', price=0)

    def it_is_a_course(course):
        assert isinstance(course, Course)

    def it_has_a_title(course):
        assert course.title == "Python Programming"

    def it_has_a_description(course):
        assert course.description == "Learn Python Programming"

    def it_has_a_price(course):
        assert course.price == 0

    def when_checking_a_teachers_permissions():
        @pytest.fixture
        def teacher():
            return UserFactory(first_name='John', last_name='Doe', role='teacher')

        def it_has_permission_to_change_the_course(teacher):
            assert teacher.has_perm('courses.change_course')

    def when_checking_a_students_permissions():
        @pytest.fixture
        def student():
            return UserFactory(first_name='Jane', last_name='Doe', role='student')

        def it_does_not_have_permission_to_change_the_course(student):
            assert not student.has_perm('courses.change_course')

    def when_saving():
        @pytest.fixture
        def saved_course(course):
            course.save()
            return Course.objects.get(id=course.id)

        def it_saves_the_title(saved_course):
            assert saved_course.title == "Python Programming"

        def it_saves_the_description(saved_course):
            assert saved_course.description == "Learn Python Programming"

        def it_saves_the_price(saved_course):
            assert saved_course.price == 0

    def when_saved():
        @pytest.fixture
        def saved_course(course):
            course.save()
            return Course.objects.get(id=course.id)

        def it_updates_the_title(saved_course):
            saved_course.title = "Python Programming with Django"
            saved_course.save()

            updated_course = Course.objects.get(id=course.id)
            assert updated_course.title == "Python Programming with Django"

        def it_can_be_deleted(saved_course):
            saved_course.delete()
            assert not Course.objects.filter(id=course.id).exists()

```
