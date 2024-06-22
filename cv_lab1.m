function C = matrix_multiply(A, B)
    [m, n] = size(A);
    [n2, p] = size(B);
    if n != n2
        error('Inner dimensions must agree.');
    end
    C = zeros(m, p);
    for i = 1:m
        for j = 1:p
            for k = 1:n
                C(i, j) += A(i, k) * B(k, j);
            end
        end
    end
end

% Example usage:
A = [1, 2; 3, 4];
B = [5, 6; 7, 8];
C = matrix_multiply(A, B);
disp('Matrix Multiplication Result:');
disp(C);

function root = bisection_method(f, a, b, tol)
    if f(a) * f(b) >= 0
        error('f(a) and f(b) must have opposite signs');
    end
    while (b - a) / 2 > tol
        c = (a + b) / 2;
        if f(c) == 0
            break;
        elseif f(c) * f(a) < 0
            b = c;
        else
            a = c;
        end
    end
    root = (a + b) / 2;
end

% Example usage:
f = @(x) x^3 - x - 2;
a = 1;
b = 2;
tol = 1e-5;
root = bisection_method(f, a, b, tol);
disp('Bisection Method Result:');
disp(root);

function sorted_array = bubble_sort(arr)
    n = length(arr);
    for i = 1:n-1
        for j = 1:n-i
            if arr(j) > arr(j+1)
                temp = arr(j);
                arr(j) = arr(j+1);
                arr(j+1) = temp;
            end
        end
    end
    sorted_array = arr;
end

% Example usage:
arr = [64, 34, 25, 12, 22, 11, 90];
sorted_array = bubble_sort(arr);
disp('Bubble Sort Result:');
disp(sorted_array);

function sorted_array = merge_sort(arr)
    if length(arr) <= 1
        sorted_array = arr;
    else
        mid = floor(length(arr) / 2);
        left = merge_sort(arr(1:mid));
        right = merge_sort(arr(mid+1:end));
        sorted_array = merge(left, right);
    end
end

function result = merge(left, right)
    result = [];
    while ~isempty(left) && ~isempty(right)
        if left(1) <= right(1)
            result = [result, left(1)];
            left = left(2:end);
        else
            result = [result, right(1)];
            right = right(2:end);
        end
    end
    result = [result, left, right];
end

% Example usage:
arr = [38, 27, 43, 3, 9, 82, 10];
sorted_array = merge_sort(arr);
disp('Merge Sort Result:');
disp(sorted_array);

function sorted_array = quicksort(arr)
    if length(arr) <= 1
        sorted_array = arr;
    else
        pivot = arr(1);
        left = arr(arr < pivot);
        right = arr(arr > pivot);
        middle = arr(arr == pivot);
        sorted_array = [quicksort(left), middle, quicksort(right)];
    end
end

% Example usage:
arr = [10, 7, 8, 9, 1, 5];
sorted_array = quicksort(arr);
disp('Quicksort Result:');
disp(sorted_array);

function index = binary_search(arr, target)
    left = 1;
    right = length(arr);
    while left <= right
        mid = floor((left + right) / 2);
        if arr(mid) == target
            index = mid;
            return;
        elseif arr(mid) < target
            left = mid + 1;
        else
            right = mid - 1;
        end
    end
    index = -1; % not found
end

% Example usage:
arr = [2, 3, 4, 10, 40];
target = 10;
index = binary_search(arr, target);
disp('Binary Search Result:');
disp(index);

function result = factorial(n)
    if n == 0
        result = 1;
    else
        result = n * factorial(n - 1);
    end
end

% Example usage:
n = 5;
result = factorial(n);
disp('Factorial Result:');
disp(result);

function is_palindrome = check_palindrome(str)
    is_palindrome = strcmp(str, fliplr(str));
end

% Example usage:
str = 'madam';
is_palindrome = check_palindrome(str);
disp('Palindrome Check Result:');
disp(is_palindrome);

function [mean_value, median_value, mode_value] = mean_median_mode(data)
    mean_value = mean(data);
    median_value = median(data);
    mode_value = mode(data);
end

% Example usage:
data = [1, 2, 2, 3, 4, 4, 4, 5, 5];
[mean_value, median_value, mode_value] = mean_median_mode(data);
disp('Mean:');
disp(mean_value);
disp('Median:');
disp(median_value);
disp('Mode:');
disp(mode_value);




