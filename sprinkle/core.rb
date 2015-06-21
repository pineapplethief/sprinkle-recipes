package :git do
  apt 'git-core', sudo: true

  verify{ has_executable 'git' }
end

package :mc do
  apt 'mc', sudo: true
  verify{ has_executable 'mc' }
end