import { render, screen, fireEvent } from '@testing-library/react';
import App from './App';

test('password strength: short password is weak', () => {
  render(<App />);
  const input = screen.getByPlaceholderText('Enter a password');
  fireEvent.change(input, { target: { value: 'ab1' } });
  fireEvent.click(screen.getByText('Check Strength'));
  expect(screen.getByText('Weak password')).toBeInTheDocument();
});

test('password strength: 6+ chars with a number is strong', () => {
  render(<App />);
  const input = screen.getByPlaceholderText('Enter a password');
  fireEvent.change(input, { target: { value: 'abc123' } });
  fireEvent.click(screen.getByText('Check Strength'));
  expect(screen.getByText('Strong password')).toBeInTheDocument();
});

test('password strength: 6+ chars without a number is weak', () => {
  render(<App />);
  const input = screen.getByPlaceholderText('Enter a password');
  fireEvent.change(input, { target: { value: 'abcdef' } });
  fireEvent.click(screen.getByText('Check Strength'));
  expect(screen.getByText('Weak password')).toBeInTheDocument();
});

test('course toggle: shows and hides description, label updates', () => {
  render(<App />);
  const button = screen.getByText('Show Description');
  expect(screen.queryByText(/This course covers React fundamentals/)).not.toBeInTheDocument();

  fireEvent.click(button);
  expect(screen.getByText(/This course covers React fundamentals/)).toBeInTheDocument();
  expect(screen.getByText('Hide Description')).toBeInTheDocument();

  fireEvent.click(screen.getByText('Hide Description'));
  expect(screen.queryByText(/This course covers React fundamentals/)).not.toBeInTheDocument();
  expect(screen.getByText('Show Description')).toBeInTheDocument();
});
