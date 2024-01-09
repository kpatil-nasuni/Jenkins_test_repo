def test_raise_error_1():
    raise RuntimeError


def test_raise_error_2():
    raise RuntimeError


def test_raise_error_3():
    assert False


def test_raise_error_4():
    raise TimeoutError


def test_pass_1():
    assert True


def test_pass_2():
    assert 1 == 1


def test_pass_3():
    if True:
        pass


def test_pass_4():
    assert True
