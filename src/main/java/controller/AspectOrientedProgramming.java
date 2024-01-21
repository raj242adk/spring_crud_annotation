package controller;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class AspectOrientedProgramming {

    @Before("execution(public void controller.AspectOrientedProgramming.secondRun())")
    public void firstProgram() {
        System.out.println("This is the first Program");
    }

    public void secondRun() {
        System.out.println("This is the second Program");
    }

    public static void main(String[] args) {
        AspectOrientedProgramming aspectOrientedProgramming = new AspectOrientedProgramming();
        aspectOrientedProgramming.secondRun();
        aspectOrientedProgramming.firstProgram();
    }
}
